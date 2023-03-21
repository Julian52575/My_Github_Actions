/*
** EPITECH PROJECT, 2023
** project_name
** File description:
** calcul_test
*/
#include <criterion/criterion.h>

Test(all, calcul)
{
    cr_assert(addition(40, 2) == 42);

    cr_assert(soustraction(42 + 21, 21) == 42);

    cr_assert(multiplication(21, 2) == 42);

    cr_assert(division(84, 2) == 42);
}
