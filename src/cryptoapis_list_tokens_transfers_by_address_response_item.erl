-module(cryptoapis_list_tokens_transfers_by_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_transfers_by_address_response_item/0]).

-type cryptoapis_list_tokens_transfers_by_address_response_item() ::
    #{ 'contractAddress' := binary(),
       'minedInBlockHeight' := integer(),
       'recipientAddress' := binary(),
       'senderAddress' := binary(),
       'tokenDecimals' := integer(),
       'tokenName' := binary(),
       'tokenSymbol' := binary(),
       'tokenType' := binary(),
       'tokensAmount' := binary(),
       'transactionHash' := binary(),
       'transactionTimestamp' := integer()
     }.

encode(#{ 'contractAddress' := ContractAddress,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipientAddress' := RecipientAddress,
          'senderAddress' := SenderAddress,
          'tokenDecimals' := TokenDecimals,
          'tokenName' := TokenName,
          'tokenSymbol' := TokenSymbol,
          'tokenType' := TokenType,
          'tokensAmount' := TokensAmount,
          'transactionHash' := TransactionHash,
          'transactionTimestamp' := TransactionTimestamp
        }) ->
    #{ 'contractAddress' => ContractAddress,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipientAddress' => RecipientAddress,
       'senderAddress' => SenderAddress,
       'tokenDecimals' => TokenDecimals,
       'tokenName' => TokenName,
       'tokenSymbol' => TokenSymbol,
       'tokenType' => TokenType,
       'tokensAmount' => TokensAmount,
       'transactionHash' => TransactionHash,
       'transactionTimestamp' => TransactionTimestamp
     }.
