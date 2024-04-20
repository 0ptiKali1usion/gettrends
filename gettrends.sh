#!/bin/bash
##04-2024
## I guess I will run this, if I feel like participating.
## Grabs Top 20 Global trends, from all over, uses jq to narrow down to the US. Opens them in a 20 tabbed Chrome instance.
##
## -JJ
curl -k https://trends.google.com/trends/hottrends/visualize/internal/data | jq '.["united_states"]' | tr '[' '\n' | tr ']' '\n' | tr ',' '\n' | sort -u | sed 's/  //g' | xargs -I '{}' open /Applications/Chrome.app http://www.google.com/search?q='{}'
