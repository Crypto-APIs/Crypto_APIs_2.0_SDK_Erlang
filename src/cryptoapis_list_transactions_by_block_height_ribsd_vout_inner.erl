-module(cryptoapis_list_transactions_by_block_height_ribsd_vout_inner).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_ribsd_vout_inner/0]).

-type cryptoapis_list_transactions_by_block_height_ribsd_vout_inner() ::
    #{ 'isSpent' := boolean(),
       'scriptPubKey' := cryptoapis_list_transactions_by_block_height_ribsd_vout_inner_script_pub_key:cryptoapis_list_transactions_by_block_height_ribsd_vout_inner_script_pub_key(),
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
