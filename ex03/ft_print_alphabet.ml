(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 11:31:03 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 10:04:54 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () =
    let rec ft_print_range x y =
        if      x = y then print_char y
        else if x < y then begin
            print_char x;
            ft_print_range (char_of_int (int_of_char x + 1)) y
        end else           ()
    in
    ft_print_range 'a' 'z';
    print_char '\n';;

let () =
    ft_print_alphabet ();;
