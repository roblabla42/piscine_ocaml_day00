(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 07:30:30 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 09:46:14 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_countdown x =
    if x <= 0 then begin
        print_int 0;
        print_char '\n'
    end else begin
        print_int x;
        print_char '\n';
        ft_countdown (x - 1)
    end;;

let () =
    let print_nbr x =
        print_string "[";
        print_int x;
        print_string "]\n";
        ft_countdown x;
    in
    print_nbr (-5);
    print_nbr (0);
    print_nbr (15);;
