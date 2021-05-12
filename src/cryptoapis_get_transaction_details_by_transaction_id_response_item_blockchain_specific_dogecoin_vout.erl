-module(cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_dogecoin_vout).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_dogecoin_vout/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_dogecoin_vout() ::
    #{ 'isSpent' := boolean(),
       'scriptPubKey' := cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_dogecoin_script_pub_key:cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_dogecoin_script_pub_key(),
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