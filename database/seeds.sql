INSERT INTO topics (title, created_at, updated_at) VALUES ('スレタイ1', NOW(), NOW());
INSERT INTO topics (title, created_at, updated_at) VALUES ('スレタイ2', NOW(), NOW());

INSERT INTO posts (name, body, topic_id, created_at, updated_at ) VALUES ('名無しさん', 'hoge', 1, NOW(), NOW());
INSERT INTO posts (name, body, topic_id, created_at, updated_at ) VALUES ('名無しさん', 'fuga', 2, NOW(), NOW());
