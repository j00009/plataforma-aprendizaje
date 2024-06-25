import * as db from '../db/db.js'

export const getCursos = async () => {
    const text = "SELECT * FROM cursos"
    const result = await db.query(text)
  
    return result
  }