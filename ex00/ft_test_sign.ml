(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 09:49:56 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:28:20 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign x =
    print_endline (if x < 0 then "negative" else "positive")

let () =
    let print_nbr x =
        print_string "[";
         print_int x;
        print_string "]: ";
        ft_test_sign x;
    in
    print_nbr (-42);
    print_nbr 0;
    print_nbr 52
