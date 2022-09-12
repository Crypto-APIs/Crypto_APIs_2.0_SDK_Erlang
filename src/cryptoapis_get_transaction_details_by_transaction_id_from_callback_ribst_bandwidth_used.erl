-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_bandwidth_used).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_bandwidth_used/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_bandwidth_used() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
