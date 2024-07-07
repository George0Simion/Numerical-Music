function similarity = cosine_similarity(A, B)
  dot_product = dot(A, B);

  normA = norm(A, 2);
  normB = norm(B, 2);

  similarity = dot_product / (normA * normB);
end
