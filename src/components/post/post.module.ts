import { Module } from '@nestjs/common';
import { PostsResolver } from './post.resolver';

@Module({
  providers: [PostsResolver],
})
export class PostModule {}
