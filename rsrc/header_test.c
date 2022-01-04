/*
** EPITECH PROJECT, date
** file
** File description:
** quote
*/

#include "../include/my.h"
#include "../include/file.h"
#include <criterion/criterion.h>
#include <criterion/hooks.h>
#include <criterion/internal/assert.h>
#include <criterion/internal/test.h>

Test(group_to_test, test_name)
{
    cr_assert_eq(function_to_test, value_expected);
}
