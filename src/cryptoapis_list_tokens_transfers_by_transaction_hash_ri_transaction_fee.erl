-module(cryptoapis_list_tokens_transfers_by_transaction_hash_ri_transaction_fee).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_transfers_by_transaction_hash_ri_transaction_fee/0]).

-type cryptoapis_list_tokens_transfers_by_transaction_hash_ri_transaction_fee() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
