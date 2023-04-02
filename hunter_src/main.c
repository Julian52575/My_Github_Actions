/*
** EPITECH PROJECT, 2023
** project_name
** File description:
** main
*/

static unsigned int my_strlen(const char *s)
{
    return s[0] ? 1 + my_strlen(s + 1) : 0;
}

void main(void)
{
    write(1, "This is my hunter!!!\0",
            my_strlen("This is my hunter!!!\0") );
    return 0;
}
