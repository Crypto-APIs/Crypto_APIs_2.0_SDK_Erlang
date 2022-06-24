-module(cryptoapis_list_wallet_transactions_ri_senders_inner).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_senders_inner/0]).

-type cryptoapis_list_wallet_transactions_ri_senders_inner() ::
    #{ 'address' := binary(),
       'amount' := binary(),
       'label' => binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount,
          'label' := Label
        }) ->
    #{ 'address' => Address,
       'amount' => Amount,
       'label' => Label
     }.
