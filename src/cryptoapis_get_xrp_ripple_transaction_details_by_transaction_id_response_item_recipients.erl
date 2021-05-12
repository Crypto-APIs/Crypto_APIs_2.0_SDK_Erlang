-module(cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_recipients).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_recipients/0]).

-type cryptoapis_get_xrp_ripple_transaction_details_by_transaction_id_response_item_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
