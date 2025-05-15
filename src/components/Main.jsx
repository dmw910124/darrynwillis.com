// import { useState } from 'react'
import Breadcrumbs from './Breadcrumbs'
import Faq from './Faq'
import Section from './Section'
import Table from './Table'

function Main() {
  // const [count, setCount] = useState(0)

  return (
    <main className='width-full max-w-screen-xl mx-auto my-0'>
      <Breadcrumbs />
      <Section />
      <Table />
      <Faq />
    </main>
  )
}

export default Main
