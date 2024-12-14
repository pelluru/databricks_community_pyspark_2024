-- Databricks notebook source
-- MAGIC %md # Vector Databases

-- COMMAND ----------

-- MAGIC %md
-- MAGIC
-- MAGIC * [What is a Vector Database?](https://www.pinecone.io/learn/vector-database/) by pinecone.io
-- MAGIC    * applications that involve large language models, generative AI, and semantic search
-- MAGIC    * [vector embeddings](https://www.pinecone.io/learn/vector-embeddings-for-developers/) is a type of data representation that carries within it semantic information that’s critical for the AI to gain understanding and maintain a long-term memory they can draw upon when executing complex tasks
-- MAGIC    * Embeddings are generated by AI models (such as Large Language Models) and have a large number of attributes or features
-- MAGIC    * Features represent different dimensions of the data that are essential for understanding patterns, relationships, and underlying structures
-- MAGIC    * Vector databases are purpose-built to manage and operate on vector embeddings (vectors)
-- MAGIC    * optimized storage and querying capabilities for embeddings
-- MAGIC    * In vector databases, we apply a similarity metric to find a vector that is the most similar to our query
-- MAGIC    * A vector database uses a combination of different algorithms that all participate in **Approximate Nearest Neighbor (ANN) search**
-- MAGIC    * These algorithms optimize the search through hashing, quantization, or graph-based search
-- MAGIC    * These algorithms are assembled into a pipeline that provides fast and accurate retrieval of the neighbors of a queried vector
-- MAGIC    * Vector databases provide **approximate results**, the main trade-offs are between accuracy and speed
-- MAGIC    * a good system can provide ultra-fast search with near-perfect accuracy
-- MAGIC    * vector database indexes vectors using PQ, LSH, or HNSW algorithms
-- MAGIC    * Vector databases offer well-known and easy-to-use features for data storage, like inserting, deleting, and updating data
-- MAGIC    * often support real-time data updates
-- MAGIC    * built-in data security features and access control mechanisms to protect sensitive information
-- MAGIC    * traditional scalar-based databases can’t keep up with the complexity and scale of vector embeddings
-- MAGIC    * traditional databases store strings, numbers, and other types of scalar data in rows and columns
-- MAGIC    * difficult to extract insights and perform real-time analysis
-- MAGIC    * semantic information retrieval
-- MAGIC    * long-term memory
-- MAGIC    * an embedding model creates vector embeddings for the content to be indexed
-- MAGIC    * vector embeddings are inserted into a vector database (with a reference to the original content)
-- MAGIC    * a query uses the same embedding model to create embeddings for the query to query a vector database for similar vector embeddings
-- MAGIC    * Standalone vector indices like [FAISS](https://www.pinecone.io/learn/series/faiss/) (Facebook AI Similarity Search) can significantly improve search and retrieval of vector embeddings
-- MAGIC    * Querying: The vector database compares the indexed query vector to the indexed vectors in the dataset to find the nearest neighbors (applying a similarity metric used by that index)
-- MAGIC    * In some cases, the vector database retrieves the final nearest neighbors from the dataset and post-processes them to return the final results. This step can include re-ranking the nearest neighbors using a different similarity measure
-- MAGIC    * The basic idea behind **Random Projection** is to project the high-dimensional vectors to a lower-dimensional space using a random projection matrix
-- MAGIC    * **Product Quantization** (PQ) is a lossy compression technique for high-dimensional vectors (like vector embeddings)
-- MAGIC    * **Locality-Sensitive Hashing** (LSH) is a technique for indexing in the context of an approximate nearest-neighbor search. LSH maps similar vectors into “buckets” using a set of hashing functions. LSH is an approximate method, and the quality of the approximation depends on the properties of the hash functions
-- MAGIC    * **Hierarchical Navigable Small World** (HNSW) creates a hierarchical, tree-like structure where each node of the tree represents a set of vectors. The edges between the nodes represent the similarity between the vectors
-- MAGIC    * **Similarity Measures** are the foundation of how a vector database compares and identifies the most relevant results for a given query. Similarity measures are mathematical methods for determining how similar two vectors are in a vector space. Similarity measures are used in vector databases to compare the vectors stored in the database and find the ones that are most similar to a given query vector. similarity measure will have an effect on the results obtained from a vector database
-- MAGIC    * **Cosine similarity**
-- MAGIC    * **Euclidean distance**
-- MAGIC    * **Dot product** measures the product of the magnitudes of two vectors and the cosine of the angle between them
-- MAGIC    * Every vector stored in the database also includes metadata
-- MAGIC    * In addition to the ability to query for similar vectors, vector databases can also filter the results based on a metadata query
-- MAGIC    * vector database usually maintains two indexes: a vector index and a metadata index
-- MAGIC    * vector embeddings in fields such as NLP, computer vision, and other AI applications

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC
-- MAGIC ## Videos
-- MAGIC
-- MAGIC [Vector Databases simply explained! (Embeddings & Indexes)](https://www.youtube.com/watch?v=dN0lsF2cvm4)
-- MAGIC
-- MAGIC * A vector database manages (indexes and stores) vector embeddings for fast retrieval and similarity search
-- MAGIC * Vector embeddings are representation of **unstructured data** (text, images, video, audio)
-- MAGIC * Machine Learning Model used for a mapping between unstructured data and vector embeddings
-- MAGIC * A **vector embedding** is a vector of numbers (a numeric vector)
-- MAGIC * Vector databases for long-term memory for LLMs
-- MAGIC * Semantic search (based on the context or meaning)
-- MAGIC * Similarity search
-- MAGIC * Ranking and recommendation engine
-- MAGIC * Vector databases: pinecone, weaviate, chroma, vespa, redis, qdrant, milvus
