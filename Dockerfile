# Dockerfile

# 使用官方 Node.js 镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /yue_wang_site

# 将 package.json 和 package-lock.json 复制到容器
COPY yue_wang_site/package*.json ./

# 安装依赖
RUN npm install

# 复制剩余的项目文件
COPY yue_wang_site/ .

# 设置容器监听端口
EXPOSE 7775

# 启动开发服务器
CMD ["npm", "start"]
