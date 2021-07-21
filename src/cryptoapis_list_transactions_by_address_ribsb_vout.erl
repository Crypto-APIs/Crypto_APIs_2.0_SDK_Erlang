-module(cryptoapis_list_transactions_by_address_ribsb_vout).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_address_ribsb_vout/0]).

-type cryptoapis_list_transactions_by_address_ribsb_vout() ::
    #{ 'isSpent' := boolean(),
       'scriptPubKey' := cryptoapis_list_transactions_by_address_ribsb_script_pub_key:cryptoapis_list_transactions_by_address_ribsb_script_pub_key(),
       'value' := binary()
     }.

encode(#{ 'isSpent' := IsSpent,
          'scriptPubKey' := ScriptPubKey,
          'value' := Value
        }) ->
    #{ 'isSpent' => IsSpent,
       'scriptPubKey' => ScriptPubKey,
       'value' => Value
     }.
