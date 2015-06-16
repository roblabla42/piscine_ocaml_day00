(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:31:11 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:32:22 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () =
    let my_print_int i =
        if i < 10 then begin
            print_char '0';
            print_int i
        end else
            print_int i
    in
    let rec inner i j =
        print_char ','; print_char ' ';
        my_print_int i;
        print_char ' ';
        my_print_int j;
        if i = 98 && j = 99 then ()
        else if j = 99 then inner (i + 1) (i + 2)
        else inner i (j + 1)
    in
    my_print_int 0;
    print_char ' ';
    my_print_int 1;
    inner 0 2;
    print_char '\n'

let () =
    ft_print_comb2()
