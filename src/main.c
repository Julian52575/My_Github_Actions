/*
** EPITECH PROJECT, 2023
** project_name
** File description:
** main
*/
#include <stdio.h>

int main(int ac, char **av)
{
    if (ac < 2)
        return 84;
    printf("You compiled this main as %s.\n", av[0]);

    for (int i = 1; i < ac; i++)
        printf("Argument #%d is %s.\n", i, av[i]);
    return 0;
}
