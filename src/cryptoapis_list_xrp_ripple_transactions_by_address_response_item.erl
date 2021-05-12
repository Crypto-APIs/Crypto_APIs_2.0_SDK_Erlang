-module(cryptoapis_list_xrp_ripple_transactions_by_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_xrp_ripple_transactions_by_address_response_item/0]).

-type cryptoapis_list_xrp_ripple_transactions_by_address_response_item() ::
    #{ 'additionalData' := binary(),
       'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'sequence' := integer(),
       'status' := binary(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'type' := binary(),
       'fee' := cryptoapis_list_xrp_ripple_transactions_by_address_response_item_fee:cryptoapis_list_xrp_ripple_transactions_by_address_response_item_fee(),
       'offer' := cryptoapis_list_xrp_ripple_transactions_by_address_response_item_offer:cryptoapis_list_xrp_ripple_transactions_by_address_response_item_offer(),
       'Receive_' := cryptoapis_list_xrp_ripple_transactions_by_address_response_item_receive:cryptoapis_list_xrp_ripple_transactions_by_address_response_item_receive(),
       'value' := cryptoapis_list_xrp_ripple_transactions_by_address_response_item_value:cryptoapis_list_xrp_ripple_transactions_by_address_response_item_value()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'sequence' := Sequence,
          'status' := Status,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'type' := Type,
          'fee' := Fee,
          'offer' := Offer,
          'Receive_' := Receive,
          'value' := Value
        }) ->
    #{ 'additionalData' => AdditionalData,
       'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'sequence' => Sequence,
       'status' => Status,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'type' => Type,
       'fee' => Fee,
       'offer' => Offer,
       'receive' => Receive,
       'value' => Value
     }.
