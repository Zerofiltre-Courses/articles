from locust import HttpUser, task, between

class ZerofiltreUser(HttpUser):
    wait_time = between(1, 5)
    
    @task
    def loadArticles(self):
        self.client.get("/articles/4-test-view")
        self.client.get("/articles/5-katka")
