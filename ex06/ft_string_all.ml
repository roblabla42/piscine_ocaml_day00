(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:00:20 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/15 13:04:40 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_string_all pred str =
    let len = String.length str in
    let rec inner i =
        if i < len then
            pred (String.get str i) && inner (i + 1)
        else
            true
    in
    inner 0;;

let () =
    let is_digit c = c >= '0' && c <= '9'
    in
    if ft_string_all is_digit "0123456789" then
        print_endline "True"
    else
        print_endline "False";
    if ft_string_all is_digit "012EAS67B9" then
        print_endline "True"
    else
        print_endline "False";;

