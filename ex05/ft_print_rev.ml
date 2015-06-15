(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 12:31:54 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/15 13:00:05 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev str =
    let rec rev str i =
        if i >= 0 then
            (print_char (String.get str i);
            rev str (i - 1))
        else
            ()
    in
    rev str (String.length str - 1);
    print_char '\n';;

let () =
    ft_print_rev "Hello world !";
    ft_print_rev "";;
