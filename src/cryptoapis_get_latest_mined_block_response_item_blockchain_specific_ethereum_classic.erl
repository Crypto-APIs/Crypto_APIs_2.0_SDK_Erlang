-module(cryptoapis_get_latest_mined_block_response_item_blockchain_specific_ethereum_classic).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_block_response_item_blockchain_specific_ethereum_classic/0]).

-type cryptoapis_get_latest_mined_block_response_item_blockchain_specific_ethereum_classic() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'sha3Uncles' := binary(),
       'totalDifficulty' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'sha3Uncles' := Sha3Uncles,
          'totalDifficulty' := TotalDifficulty
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'sha3Uncles' => Sha3Uncles,
       'totalDifficulty' => TotalDifficulty
     }.
