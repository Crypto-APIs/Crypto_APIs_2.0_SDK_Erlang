-module(cryptoapis_transaction_mined_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_mined_data_item/0]).

-type cryptoapis_transaction_mined_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'transactionId' := binary(),
       'minedInBlock' := cryptoapis_transaction_mined_data_item_mined_in_block:cryptoapis_transaction_mined_data_item_mined_in_block()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'transactionId' := TransactionId,
          'minedInBlock' := MinedInBlock
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'transactionId' => TransactionId,
       'minedInBlock' => MinedInBlock
     }.
