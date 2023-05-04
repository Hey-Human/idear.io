#!/usr/bin/env bash
# message = $(cat ../ideas/IDEA_1.md);
message="I would like to create an app similar to Tinder. Instead of choosing to like or dislike a person, what people would actually be evaluating are ideas."

RESPONSE=$(curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [{"role": "user", "content": "Given the following idea: '"$message"'. I would like you to give me some feedback about it."}]
  }')

# Export the file content as an output
echo "::set-output name=chatgpt_feedback::${RESPONSE}"
              