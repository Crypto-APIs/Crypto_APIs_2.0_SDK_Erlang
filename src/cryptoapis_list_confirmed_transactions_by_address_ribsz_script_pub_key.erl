-module(cryptoapis_list_confirmed_transactions_by_address_ribsz_script_pub_key).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_ribsz_script_pub_key/0]).

-type cryptoapis_list_confirmed_transactions_by_address_ribsz_script_pub_key() ::
    #{ 'addresses' := list(),
       'asm' := binary(),
       'hex' := binary(),
       'reqSigs' := integer(),
       'type' := binary()
     }.

encode(#{ 'addresses' := Addresses,
          'asm' := Asm,
          'hex' := Hex,
          'reqSigs' := ReqSigs,
          'type' := Type
        }) ->
    #{ 'addresses' => Addresses,
       'asm' => Asm,
       'hex' => Hex,
       'reqSigs' => ReqSigs,
       'type' => Type
     }.
