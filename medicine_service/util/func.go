package util

import (
	"github.com/amojs-xy/tools/array"
	xyutil "github.com/amojs-xy/tools/util"
	"regexp"
	"strings"
	"unicode"
)

func IsPinyin(s string) bool {
	for _, c := range s {
		if !(unicode.IsLetter(c) && unicode.IsUpper(c) || unicode.IsLower(c)) {
			return false
		}
	}
	return true
}

func IsChinese(s string) bool {
	reg := regexp.MustCompile("^[u4e00-u9fa5]+$")
	return reg.MatchString(s)
}

func StringToNumberSlice(str string) []int32 {
	var numberArr []int32
	for _, s := range strings.Split(str, ",") {
		n, _ := xyutil.StringToNumber[int32](s, "int32", 10)
		array.Push(&numberArr, n)
	}

	return numberArr
}
