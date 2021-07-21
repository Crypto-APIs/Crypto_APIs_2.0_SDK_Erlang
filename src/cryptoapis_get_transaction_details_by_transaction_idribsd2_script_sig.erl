-module(cryptoapis_get_transaction_details_by_transaction_idribsd2_script_sig).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsd2_script_sig/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsd2_script_sig() ::
    #{ 'asm' := binary(),
       'hex' := binary(),
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
