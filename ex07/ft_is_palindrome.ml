(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:05:05 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:30:20 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome str =
    let len = String.length str in
    let rec inner i =
        if i < len / 2 then
            String.get str i = String.get str (len - 1 - i) && inner (i + 1)
        else
            true
    in
    inner 0

let () =
    let print_true b =
        if b then
            print_endline "True"
        else
            print_endline "False"
    in
    print_true (ft_is_palindrome "radar");
    print_true (ft_is_palindrome "madam");
    print_true (ft_is_palindrome "car");
    print_true (ft_is_palindrome "")
