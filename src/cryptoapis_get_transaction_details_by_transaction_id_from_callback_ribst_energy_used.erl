-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_energy_used).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_energy_used/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_energy_used() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
