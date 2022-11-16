from transformers import AutoTokenizer
from longformer import LongformerEncoderDecoderForConditionalGeneration
from longformer import LongformerEncoderDecoderConfig

tokenizer = AutoTokenizer.from_pretrained('./PRIMERA_model/')
config = LongformerEncoderDecoderConfig.from_pretrained('./PRIMERA_model/')
model = LongformerEncoderDecoderForConditionalGeneration.from_pretrained(
            './PRIMERA_model/', config=config)

print(model)