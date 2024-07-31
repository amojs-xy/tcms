package util

import (
	"fmt"
	"github.com/gin-gonic/gin/binding"
	"github.com/go-playground/locales/en"
	"github.com/go-playground/locales/zh"
	ut "github.com/go-playground/universal-translator"
	"github.com/go-playground/validator/v10"
	enTranslations "github.com/go-playground/validator/v10/translations/en"
	zhTranslations "github.com/go-playground/validator/v10/translations/zh"
	"reflect"
	"strings"
)

var Translator ut.Translator

func RemoveStructName(msg map[string]string) map[string]string {
	m := map[string]string{}

	for k, v := range msg {
		key := k[strings.Index(k, ".")+1:]
		m[key] = v
	}

	return m
}

func CreateTranslator(locale string) (err error) {
	if v, ok := binding.Validator.Engine().(*validator.Validate); ok {
		v.RegisterTagNameFunc(func(sf reflect.StructField) string {
			name := strings.Split(sf.Tag.Get("json"), ",")[0]

			if name == "-" {
				return ""
			}

			return name
		})

		zhTranslation := zh.New()
		enTranslation := en.New()
		uniTranslations := ut.New(enTranslation, zhTranslation, enTranslation)

		Translator, ok = uniTranslations.GetTranslator(locale)

		if !ok {
			return fmt.Errorf("uniTranslations.GetTranslator(%s)", locale)
		}

		switch locale {
		case "en":
			err := enTranslations.RegisterDefaultTranslations(v, Translator)
			if err != nil {
				return err
			}
		case "zh":
			err := zhTranslations.RegisterDefaultTranslations(v, Translator)
			if err != nil {
				return err
			}
		default:
			err := enTranslations.RegisterDefaultTranslations(v, Translator)
			if err != nil {
				return err
			}
		}
		return
	}
	return
}
