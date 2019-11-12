# fix problem of raw length changing analysis

books <- books %>%
  mutate(bookLength = nchar(text))

words <- books %>%
  unnest_tokens(word, text) 

words %>%
  filter(word %in% sentiments$word) %>%
  count(title, author, bookLength) %>%
  mutate(EmoRatio = n / bookLength) %>%
  arrange(desc(EmoRatio)) %>%
  View()

# analyze happiest books

happy_books <- words %>%
  filter(word %in% sentiments$word) %>%
  count(title, author, bookLength) %>%
  mutate(EmoRatio = n / bookLength) %>%
  arrange(EmoRatio) %>%
  slice(1:9)

ggplot(books_sentiment %>% filter(title %in% happy_books$title), 
       aes(index, sentiment, fill = title)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  facet_wrap(~title, ncol = 3, scales = "free_x")