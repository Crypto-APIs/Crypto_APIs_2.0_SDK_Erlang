-module(cryptoapis_list_unconfirmed_transactions_by_address_ribsb_script_sig).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_transactions_by_address_ribsb_script_sig/0]).

-type cryptoapis_list_unconfirmed_transactions_by_address_ribsb_script_sig() ::
    #{ 'asm' := binary(),
       'hex' => binary(),
       'type' := binary()
     }.

encode(#{ 'asm' := Asm,
          'hex' := Hex,
          'type' := Type
        }) ->
    #{ 'asm' => Asm,
       'hex' => Hex,
       'type' => Type
     }.
