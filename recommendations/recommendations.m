function recoms = recommendations(path, liked_theme, num_recoms, min_reviews, num_features)
  mat = read_mat(path);
  mat = preprocess(mat, min_reviews);
  [U, S, V] = svds(mat, num_features);
  V = V';

  liked_vector = V(:, liked_theme);
  similarities = arrayfun(@(i) cosine_similarity(liked_vector, V(:, i)), 1:size(V, 2));
  [~, sorted_indices] = sort(similarities, 'descend');
  sorted_indices(sorted_indices == liked_theme) = [];

  recoms = sorted_indices(1:num_recoms);
end
