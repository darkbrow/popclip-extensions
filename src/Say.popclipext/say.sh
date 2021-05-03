IS_KOR=$(echo "$POPCLIP_TEXT" | head -c 100 | iconv -f UTF-8-MAC -t UTF-8 | perl -Mutf8 -CI -ne 'print if /[ㄱ-힣]/')
if [ ${#IS_KOR} -gt 0 ]; then
    say -v Yuna "$POPCLIP_TEXT"
else
    say -v Samantha "$POPCLIP_TEXT"
fi
