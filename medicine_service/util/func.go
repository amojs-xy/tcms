package util

import (
	"regexp"
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
