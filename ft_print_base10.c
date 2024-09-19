/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_base10.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tgeiger <tgeiger@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/19 13:33:04 by tgeiger           #+#    #+#             */
/*   Updated: 2024/09/19 13:39:06 by tgeiger          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "...src/libft.h"
#include "printf.h"

void ft_print_base10_signed(/*argument*/)
{
	ft_putnbr_fd(/*arg*/, 1);
}

void ft_print_base10_unsigned(/*argument*/)
{
	if (nb > 9)
		{
			count += ft_putnbr(nb / 10);
			count += ft_putnbr(nb % 10);
		}
	else
		count += ft_putchar(nb + '0');
}
