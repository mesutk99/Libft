/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mkureksi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/07 17:58:09 by mkureksi          #+#    #+#             */
/*   Updated: 2022/12/07 17:58:25 by mkureksi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlen(const char *str)
{
	int		idx;

	idx = 0;
	while (str[idx])
		idx++;
	return (idx);
}
/*
int main()
{
char str[] = "mesut";
int result = ft_strlen(str);
printf("The length of the string is %d.\n", result);
}
*/
