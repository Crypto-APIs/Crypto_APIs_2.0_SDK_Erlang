-module(cryptoapis_address_coins_transaction_confirmed_data_item).

-export([encode/1]).

-export_type([cryptoapis_address_coins_transaction_confirmed_data_item/0]).

-type cryptoapis_address_coins_transaction_confirmed_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'minedInBlock' := cryptoapis_address_coins_transaction_confirmed_data_item_mined_in_block:cryptoapis_address_coins_transaction_confirmed_data_item_mined_in_block(),
       'transactionId' := binary(),
       'amount' := binary(),
       'unit' := binary(),
       'direction' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'minedInBlock' := MinedInBlock,
          'transactionId' := TransactionId,
          'amount' := Amount,
          'unit' := Unit,
          'direction' := Direction
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'minedInBlock' => MinedInBlock,
       'transactionId' => TransactionId,
       'amount' => Amount,
       'unit' => Unit,
       'direction' => Direction
     }.
