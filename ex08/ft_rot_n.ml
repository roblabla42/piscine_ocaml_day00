(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:09:03 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:32:06 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_rot_n i str =
    let fn c =
        let a = if 'a' <= c && c <= 'z' then
            int_of_char 'a'
        else
            int_of_char 'A'
        in
        if ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') then
            char_of_int (((int_of_char c - a + i) mod 26) + a)
        else
            c
    in
    String.map fn str

let () =
    print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
    print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
    print_endline (ft_rot_n 42 "0123456789");
    print_endline (ft_rot_n 2 "OI2EAS67B9");
    print_endline (ft_rot_n 0 "Damned !");
    print_endline (ft_rot_n 42 "");
    print_endline (ft_rot_n 1 "NBzlk qnbjr !")
