#!/usr/bin/env ruby
# frozen_string_literal: true

# Check for changed posts and set last_modified_at from git history

require 'open3'

Jekyll::Hooks.register :posts, :post_init do |post|
  begin
    # Safely execute git command using Open3
    commit_num, status = Open3.capture2('git', 'rev-list', '--count', 'HEAD', '--', post.path)

    next unless status.success? && commit_num.to_i > 1

    lastmod_date, status = Open3.capture2('git', 'log', '-1', '--pretty=%ad', '--date=iso', '--', post.path)

    if status.success? && !lastmod_date.strip.empty?
      post.data['last_modified_at'] = lastmod_date.strip
    end
  rescue StandardError => e
    Jekyll.logger.warn "posts-lastmod-hook:", "Failed to get git info for #{post.path}: #{e.message}"
  end
end
