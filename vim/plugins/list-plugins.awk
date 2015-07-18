BEGIN {
    FS=":"
    last_file=""
} {
    if (last_file != $1) {
        printf("\033[35m%s\033[0m\n", $1)
        last_file = $1
    }
    printf("    \033[32m%s\033[0m\n", substr($2,8))
}
