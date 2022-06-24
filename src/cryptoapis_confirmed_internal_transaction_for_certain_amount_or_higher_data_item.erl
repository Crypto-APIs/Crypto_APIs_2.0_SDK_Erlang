-module(cryptoapis_confirmed_internal_transaction_for_certain_amount_or_higher_data_item).

-export([encode/1]).

-export_type([cryptoapis_confirmed_internal_transaction_for_certain_amount_or_higher_data_item/0]).

-type cryptoapis_confirmed_internal_transaction_for_certain_amount_or_higher_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'minedInBlock' := cryptoapis_address_internal_transaction_confirmed_data_item_mined_in_block:cryptoapis_address_internal_transaction_confirmed_data_item_mined_in_block(),
       'parentTransactionId' := binary(),
       'operationId' := binary(),
       'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'minedInBlock' := MinedInBlock,
          'parentTransactionId' := ParentTransactionId,
          'operationId' := OperationId,
          'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'minedInBlock' => MinedInBlock,
       'parentTransactionId' => ParentTransactionId,
       'operationId' => OperationId,
       'amount' => Amount,
       'unit' => Unit
     }.
