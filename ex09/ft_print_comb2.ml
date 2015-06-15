(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:31:11 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/15 13:37:01 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () =
    let my_print_int i =
        if i < 10 then
            (print_char '0';
            print_int i)
        else
            print_int i
    in
    let rec inner i j =
        print_char ','; print_char ' ';
        my_print_int i;
        print_char ' ';
        my_print_int j;
        match (i, j) with
        | (98, 99) -> ()
        | (x, 99) -> inner (x + 1) (x + 2)
        | (x, y) -> inner x (y + 1)
    in
    my_print_int 0;
    print_char ' ';
    my_print_int 1;
    inner 0 2;
    print_char '\n';;

let () =
    ft_print_comb2();;
