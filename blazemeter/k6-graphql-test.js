import http from 'k6/http'
import { sleep } from "k6";

export default function() {

  const query = `
  {
    post(id: "005bb97e-bd1a-46de-b209-457258c3d214") {
      id
      title
      author {
        name
      }
      comments {
        title
        author {
          name
        }
      }
    }
  }
  `;

  const headers = {
    'Content-Type': 'application/json',
  };

  const res = http.post('http://thinktank.sectorfour:3000/graphql', JSON.stringify({ query: query }), {
    headers: headers,
  });

  sleep(0.3);
}
