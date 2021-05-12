-module(cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item/0]).

-type cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item() ::
    #{ 'additionalData' := binary(),
       'index' := binary(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := binary(),
       'offer' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_offer:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_offer(),
       'Receive_' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_receive:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_receive(),
       'recipients' := list(),
       'senders' := list(),
       'sequence' := integer(),
       'status' => binary(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'type' := binary(),
       'fee' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_fee:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_fee(),
       'value' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_value:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'offer' := Offer,
          'Receive_' := Receive,
          'recipients' := Recipients,
          'senders' := Senders,
          'sequence' := Sequence,
          'status' := Status,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'type' := Type,
          'fee' := Fee,
          'value' := Value
        }) ->
    #{ 'additionalData' => AdditionalData,
       'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'offer' => Offer,
       'receive' => Receive,
       'recipients' => Recipients,
       'senders' => Senders,
       'sequence' => Sequence,
       'status' => Status,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'type' => Type,
       'fee' => Fee,
       'value' => Value
     }.
