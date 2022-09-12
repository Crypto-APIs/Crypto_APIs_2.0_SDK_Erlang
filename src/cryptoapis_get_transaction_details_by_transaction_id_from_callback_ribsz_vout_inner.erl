-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz_vout_inner).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz_vout_inner/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz_vout_inner() ::
    #{ 'isSpent' := boolean(),
       'scriptPubKey' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz_vout_inner_script_pub_key:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz_vout_inner_script_pub_key(),
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
