-module(cryptoapis_get_transaction_details_by_transaction_id_response_item_senders).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_response_item_senders/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_response_item_senders() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
