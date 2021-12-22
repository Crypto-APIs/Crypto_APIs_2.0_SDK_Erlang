-module(cryptoapis_get_transaction_details_by_transaction_idribsz_vout).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsz_vout/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsz_vout() ::
    #{ 'isSpent' := boolean(),
       'scriptPubKey' := cryptoapis_get_transaction_details_by_transaction_idribsz_script_pub_key:cryptoapis_get_transaction_details_by_transaction_idribsz_script_pub_key(),
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
