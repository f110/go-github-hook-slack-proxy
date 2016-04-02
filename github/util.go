package github

import (
	"strings"
	"unicode/utf8"
)

func LinkTo(url string, text string) string {
	return "<" + url + "|" + text + ">"
}

func BriefString(b string, n int) string {
	short := strings.Replace(b, "\r\n", " ", -1)
	short = strings.Replace(short, "\n", " ", -1)
	if utf8.RuneCountInString(short) > n {
		short = string([]rune(short)[0:n]) + "..."
	}

	return short
}
