-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsb_vout_inner_script_pub_key).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsb_vout_inner_script_pub_key/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsb_vout_inner_script_pub_key() ::
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
