-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb_data_item/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb_data_item() ::
    #{ 'allowDuplicates' => boolean(),
       'amountHigherThan' := integer(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'contractAddress' := binary()
     }.

encode(#{ 'allowDuplicates' := AllowDuplicates,
          'amountHigherThan' := AmountHigherThan,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'allowDuplicates' => AllowDuplicates,
       'amountHigherThan' => AmountHigherThan,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'contractAddress' => ContractAddress
     }.
