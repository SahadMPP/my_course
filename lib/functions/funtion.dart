 

 import 'package:http/http.dart' as http;

class DataBaseFunction {
  
static const baseUrl = 'https://trogon.info/tutorpro/edspark/api/';

static const token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8";

Future<void> getCourses() async {
  final url = Uri.parse('$baseUrl/my_course');
  try {
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
    } else {
      print('Failed to load courses. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching courses: $e');
  }
}

Future<void> getLevelsByCourse(int courseId, int sectionId) async {
  final url = Uri.parse('$baseUrl/levels_by_course?course_id=$courseId&section_id=$sectionId');
  try {
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // List levels = json.decode(response.body);
      // print('Levels for course $courseId: $levels');
    } else {
      print('Failed to load levels. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching levels: $e');
  }
}

Future<void> getLessonVideos(int lessonId) async {
  final url = Uri.parse('$baseUrl/get_lesson_videos?lesson_id=$lessonId');
  try {
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // List videos = json.decode(response.body);
      // print('Videos for lesson $lessonId: $videos');
    } else {
      print('Failed to load videos. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching videos: $e');
  }
}


  
}