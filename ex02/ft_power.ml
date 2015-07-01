(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 11:11:21 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:29:12 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power x y =
    if      y = 0 then              1
    else if y = 1 then              x
    else if y mod 2 = 0 then        ft_power (x * x) (y / 2)
    else                            ft_power x (y - 1) * x

let () =
    let print_nbr x y =
        print_string "[";
        print_int x;
        print_string " ^ ";
        print_int y;
        print_string "]: ";
        print_int (ft_power x y);
        print_string "\n";
    in
    print_nbr 2 4;
    print_nbr 3 0;
    print_nbr 0 5;
    print_nbr 5 7;
    print_nbr 12 12;
    print_nbr 3 3
